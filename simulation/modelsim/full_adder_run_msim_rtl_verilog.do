transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/Users/Guoha/Documents/ece550/project/ece550 {C:/Users/Guoha/Documents/ece550/project/ece550/full_adder.v}
vlog -vlog01compat -work work +incdir+C:/Users/Guoha/Documents/ece550/project/ece550 {C:/Users/Guoha/Documents/ece550/project/ece550/four_bit_RCA.v}
vlog -vlog01compat -work work +incdir+C:/Users/Guoha/Documents/ece550/project/ece550 {C:/Users/Guoha/Documents/ece550/project/ece550/eight_bit_RCA.v}
vlog -vlog01compat -work work +incdir+C:/Users/Guoha/Documents/ece550/project/ece550 {C:/Users/Guoha/Documents/ece550/project/ece550/sixteen_bit_RCA.v}
vlog -vlog01compat -work work +incdir+C:/Users/Guoha/Documents/ece550/project/ece550 {C:/Users/Guoha/Documents/ece550/project/ece550/thirty_two_bit_CSA.v}
vlog -vlog01compat -work work +incdir+C:/Users/Guoha/Documents/ece550/project/ece550 {C:/Users/Guoha/Documents/ece550/project/ece550/sixteen_bit_two_one_mux.v}
vlog -vlog01compat -work work +incdir+C:/Users/Guoha/Documents/ece550/project/ece550 {C:/Users/Guoha/Documents/ece550/project/ece550/sixteen_bit_splitter.v}
vlog -vlog01compat -work work +incdir+C:/Users/Guoha/Documents/ece550/project/ece550 {C:/Users/Guoha/Documents/ece550/project/ece550/sixteen_bit_and.v}
vlog -vlog01compat -work work +incdir+C:/Users/Guoha/Documents/ece550/project/ece550 {C:/Users/Guoha/Documents/ece550/project/ece550/sixteen_bit_or.v}
vlog -vlog01compat -work work +incdir+C:/Users/Guoha/Documents/ece550/project/ece550 {C:/Users/Guoha/Documents/ece550/project/ece550/one_bit_two_one_mux.v}
vlog -vlog01compat -work work +incdir+C:/Users/Guoha/Documents/ece550/project/ece550 {C:/Users/Guoha/Documents/ece550/project/ece550/alu.v}
vlog -vlog01compat -work work +incdir+C:/Users/Guoha/Documents/ece550/project/ece550 {C:/Users/Guoha/Documents/ece550/project/ece550/thirty_two_bit_not.v}
vlog -vlog01compat -work work +incdir+C:/Users/Guoha/Documents/ece550/project/ece550 {C:/Users/Guoha/Documents/ece550/project/ece550/thirty_two_bit_and.v}
vlog -vlog01compat -work work +incdir+C:/Users/Guoha/Documents/ece550/project/ece550 {C:/Users/Guoha/Documents/ece550/project/ece550/thirty_two_bit_splitter.v}
vlog -vlog01compat -work work +incdir+C:/Users/Guoha/Documents/ece550/project/ece550 {C:/Users/Guoha/Documents/ece550/project/ece550/thirty_two_bit_two_one_mux.v}
vlog -vlog01compat -work work +incdir+C:/Users/Guoha/Documents/ece550/project/ece550 {C:/Users/Guoha/Documents/ece550/project/ece550/thirty_two_bit_or.v}
vlog -vlog01compat -work work +incdir+C:/Users/Guoha/Documents/ece550/project/ece550 {C:/Users/Guoha/Documents/ece550/project/ece550/thirty_two_bit_SLL.v}
vlog -vlog01compat -work work +incdir+C:/Users/Guoha/Documents/ece550/project/ece550 {C:/Users/Guoha/Documents/ece550/project/ece550/thirty_two_bit_SRA.v}

vlog -vlog01compat -work work +incdir+C:/Users/Guoha/Documents/ece550/project/ece550 {C:/Users/Guoha/Documents/ece550/project/ece550/alu_tb.v}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cycloneive_ver -L rtl_work -L work -voptargs="+acc"  alu_tb

add wave *
view structure
view signals
run -all
