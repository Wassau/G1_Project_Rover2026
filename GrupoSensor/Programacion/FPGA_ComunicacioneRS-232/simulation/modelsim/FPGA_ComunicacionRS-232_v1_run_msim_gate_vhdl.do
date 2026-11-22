transcript on
if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vcom -93 -work work {FPGA_ComunicacionRS-232_v1_8_1200mv_85c_slow.vho}

