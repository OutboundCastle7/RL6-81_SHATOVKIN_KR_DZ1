onerror {exit -code 1}
vlib work
vlog -work work DZ1_Quartus.vo
vlog -work work Waveform19.vwf.vt
vsim -novopt -c -t 1ps -L cycloneive_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate_ver -L altera_lnsim_ver work.main_prom_vlg_vec_tst
vcd file -direction DZ1_Quartus.msim.vcd
vcd add -internal main_prom_vlg_vec_tst/*
vcd add -internal main_prom_vlg_vec_tst/i1/*
proc simTimestamp {} {
    echo "Simulation time: $::now ps"
    if { [string equal running [runStatus]] } {
        after 2500 simTimestamp
    }
}
after 2500 simTimestamp
run -all
quit -f


