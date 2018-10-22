transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/Anirudh Singhal/Documents/sem5/ee309/project_files/ALU/ALU_final/FullAdder.vhd}
vcom -93 -work work {C:/Users/Anirudh Singhal/Documents/sem5/ee309/project_files/ALU/ALU_final/Add.vhd}
vcom -93 -work work {C:/Users/Anirudh Singhal/Documents/sem5/ee309/project_files/ALU/ALU_final/ALU_final.vhd}

