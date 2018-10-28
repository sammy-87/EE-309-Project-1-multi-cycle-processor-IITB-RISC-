transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {/home/pranil/Desktop/EE309 Microcontrollers/EE-309-Project-1-multi-cycle-processor-IITB-RISC-/outputlogic/outputlogic.vhd}
vcom -93 -work work {/home/pranil/Desktop/EE309 Microcontrollers/EE-309-Project-1-multi-cycle-processor-IITB-RISC-/mux4to1.vhd}
vcom -93 -work work {/home/pranil/Desktop/EE309 Microcontrollers/EE-309-Project-1-multi-cycle-processor-IITB-RISC-/Shift7/Shift7.vhd}
vcom -93 -work work {/home/pranil/Desktop/EE309 Microcontrollers/EE-309-Project-1-multi-cycle-processor-IITB-RISC-/SE9/SE9.vhd}
vcom -93 -work work {/home/pranil/Desktop/EE309 Microcontrollers/EE-309-Project-1-multi-cycle-processor-IITB-RISC-/SE6/SE6.vhd}
vcom -93 -work work {/home/pranil/Desktop/EE309 Microcontrollers/EE-309-Project-1-multi-cycle-processor-IITB-RISC-/rf_final/rf.vhd}
vcom -93 -work work {/home/pranil/Desktop/EE309 Microcontrollers/EE-309-Project-1-multi-cycle-processor-IITB-RISC-/rf_final/R7.vhd}
vcom -93 -work work {/home/pranil/Desktop/EE309 Microcontrollers/EE-309-Project-1-multi-cycle-processor-IITB-RISC-/PEN/PEN.vhd}
vcom -93 -work work {/home/pranil/Desktop/EE309 Microcontrollers/EE-309-Project-1-multi-cycle-processor-IITB-RISC-/nextstatelogic&stateregister/statereg.vhd}
vcom -93 -work work {/home/pranil/Desktop/EE309 Microcontrollers/EE-309-Project-1-multi-cycle-processor-IITB-RISC-/Memory/Reg.vhd}
vcom -93 -work work {/home/pranil/Desktop/EE309 Microcontrollers/EE-309-Project-1-multi-cycle-processor-IITB-RISC-/Memory/memory.vhd}
vcom -93 -work work {/home/pranil/Desktop/EE309 Microcontrollers/EE-309-Project-1-multi-cycle-processor-IITB-RISC-/ALU/ALU_final/FullAdder.vhd}
vcom -93 -work work {/home/pranil/Desktop/EE309 Microcontrollers/EE-309-Project-1-multi-cycle-processor-IITB-RISC-/ALU/ALU_final/ALU_final.vhd}
vcom -93 -work work {/home/pranil/Desktop/EE309 Microcontrollers/EE-309-Project-1-multi-cycle-processor-IITB-RISC-/ALU/ALU_final/Add.vhd}
vcom -93 -work work {/home/pranil/Desktop/EE309 Microcontrollers/EE-309-Project-1-multi-cycle-processor-IITB-RISC-/uP/uP.vhd}
vcom -93 -work work {/home/pranil/Desktop/EE309 Microcontrollers/EE-309-Project-1-multi-cycle-processor-IITB-RISC-/bit_reg.vhd}
vcom -93 -work work {/home/pranil/Desktop/EE309 Microcontrollers/EE-309-Project-1-multi-cycle-processor-IITB-RISC-/mux2to1.vhd}
vcom -93 -work work {/home/pranil/Desktop/EE309 Microcontrollers/EE-309-Project-1-multi-cycle-processor-IITB-RISC-/mux4to1_3bit.vhd}
vcom -93 -work work {/home/pranil/Desktop/EE309 Microcontrollers/EE-309-Project-1-multi-cycle-processor-IITB-RISC-/mux2to1_16bit.vhd}
vcom -93 -work work {/home/pranil/Desktop/EE309 Microcontrollers/EE-309-Project-1-multi-cycle-processor-IITB-RISC-/mux2to1_8bit.vhd}
vcom -93 -work work {/home/pranil/Desktop/EE309 Microcontrollers/EE-309-Project-1-multi-cycle-processor-IITB-RISC-/uP/Reg8.vhd}

