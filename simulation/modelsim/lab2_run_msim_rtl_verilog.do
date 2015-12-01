transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -sv -work work +incdir+C:/Users/Christine/CSE141LProject/lab3 {C:/Users/Christine/CSE141LProject/lab3/reg_file.sv}
vlog -sv -work work +incdir+C:/Users/Christine/CSE141LProject/lab3 {C:/Users/Christine/CSE141LProject/lab3/definitions.sv}
vlog -sv -work work +incdir+C:/Users/Christine/CSE141LProject/lab3 {C:/Users/Christine/CSE141LProject/lab3/instr_mem.sv}
vlog -sv -work work +incdir+C:/Users/Christine/CSE141LProject/lab3 {C:/Users/Christine/CSE141LProject/lab3/core.sv}
vlog -sv -work work +incdir+C:/Users/Christine/CSE141LProject/lab3 {C:/Users/Christine/CSE141LProject/lab3/cl_state_machine.sv}
vlog -sv -work work +incdir+C:/Users/Christine/CSE141LProject/lab3 {C:/Users/Christine/CSE141LProject/lab3/cl_decode.sv}
vlog -sv -work work +incdir+C:/Users/Christine/CSE141LProject/lab3 {C:/Users/Christine/CSE141LProject/lab3/alu.sv}

